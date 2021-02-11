.class Lcom/miui/home/launcher/LauncherProvider$1;
.super Ljava/lang/Object;
.source "LauncherProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/LauncherProvider;

.field final synthetic val$homePreview:Landroid/graphics/Bitmap;

.field final synthetic val$wallpaperColorMode:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherProvider;ILandroid/graphics/Bitmap;)V
    .locals 0

    .line 589
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherProvider$1;->this$0:Lcom/miui/home/launcher/LauncherProvider;

    iput p2, p0, Lcom/miui/home/launcher/LauncherProvider$1;->val$wallpaperColorMode:I

    iput-object p3, p0, Lcom/miui/home/launcher/LauncherProvider$1;->val$homePreview:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 592
    iget v0, p0, Lcom/miui/home/launcher/LauncherProvider$1;->val$wallpaperColorMode:I

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherProvider$1;->val$homePreview:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/WallpaperUtils;->correctHomeScreenPreview(ILandroid/graphics/Bitmap;)V

    return-void
.end method
