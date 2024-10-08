using Microsoft.EntityFrameworkCore;
using CinemaApi.Models;
using Microsoft.Extensions.FileProviders;

var builder = WebApplication.CreateBuilder(args);

builder.Services.AddDbContext<CinemaContext>(x => x.UseSqlServer("Server=.\\SQLEXPRESS;initial catalog=Cinema;user id=sa;password=sa;TrustServerCertificate=true", options => options.EnableRetryOnFailure()));

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
//if (app.Environment.IsDevelopment())
{
	app.UseSwagger();
	app.UseSwaggerUI();
}

app.UseStaticFiles(); // For the wwwroot folder

app.UseStaticFiles(new StaticFileOptions()
{
	FileProvider = new PhysicalFileProvider(
						Path.Combine(Directory.GetCurrentDirectory(), @"images_cinemapp")),
	RequestPath = new PathString("/images_cinemapp")
});

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
