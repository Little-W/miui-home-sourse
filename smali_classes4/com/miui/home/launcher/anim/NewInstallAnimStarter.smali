.class public Lcom/miui/home/launcher/anim/NewInstallAnimStarter;
.super Ljava/lang/Object;
.source "NewInstallAnimStarter.java"

# interfaces
.implements Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;


# instance fields
.field private mIcon:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;->mIcon:Lcom/miui/home/launcher/ShortcutIcon;

    return-void
.end method

.method private createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    .line 47
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-nez p0, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    .line 52
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 50
    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 55
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private startInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;->mIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;->createBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->startLightAnim(Landroid/graphics/Bitmap;)V

    .line 31
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;->mIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    if-nez p0, :cond_0

    return-void

    .line 33
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    and-int/lit16 p1, p1, -0x101

    iput p1, p0, Lcom/miui/home/launcher/ShortcutInfo;->itemFlags:I

    const-string p1, "dynamic_icon"

    .line 34
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutInfo;->setTrackMessage(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method


# virtual methods
.method public onImageDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;->startInternal(Landroid/graphics/drawable/Drawable;)V

    .line 42
    iget-object p0, p0, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;->mIcon:Lcom/miui/home/launcher/ShortcutIcon;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ShortcutIcon;->setImageSetCallback(Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;->mIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;->startInternal(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/anim/NewInstallAnimStarter;->mIcon:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ShortcutIcon;->setImageSetCallback(Lcom/miui/home/launcher/ShortcutIcon$ImageSetCallback;)V

    :goto_0
    return-void
.end method
