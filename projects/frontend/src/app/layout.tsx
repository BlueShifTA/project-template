import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "Project Template",
  description: "A modern project template with Next.js and FastAPI",
};

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
