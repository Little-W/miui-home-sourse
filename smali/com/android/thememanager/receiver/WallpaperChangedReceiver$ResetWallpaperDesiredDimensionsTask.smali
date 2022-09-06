.class Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;
.super Landroid/os/AsyncTask;
.source "WallpaperChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/receiver/WallpaperChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetWallpaperDesiredDimensionsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    .line 50
    iget-object p1, p0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    .line 51
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    :try_start_0
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 55
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "WallpaperChangedReceiver"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "peekDrawable hanppens error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5

    .line 66
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 70
    iget-object v1, p0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver;->access$000(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    const/4 v2, 0x1

    .line 72
    iget v3, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    mul-int/2addr v3, p1

    if-ne v0, v3, :cond_0

    move v2, v4

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    .line 77
    iget v0, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v3

    if-ne v0, v3, :cond_1

    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 78
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 79
    :cond_1
    iget v0, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 81
    :try_start_0
    iget-object p1, p0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "pref_key_wallpaper_screen_span"

    int-to-float v1, v2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "WallpaperChangedReceiver"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WallpaperChangedReceiver version is 0 and put float pref_key_wallpaper_screen_span error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    iget-object p1, p0, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.home.intent.action.UPDATE_WALLPAPER_SURFACE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/thememanager/receiver/WallpaperChangedReceiver$ResetWallpaperDesiredDimensionsTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
