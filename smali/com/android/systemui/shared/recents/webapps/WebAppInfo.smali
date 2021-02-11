.class public Lcom/android/systemui/shared/recents/webapps/WebAppInfo;
.super Ljava/lang/Object;
.source "WebAppInfo.java"


# static fields
.field private static final AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ICON_DATA:Ljava/lang/String; = "icon_data"

.field private static final ICON_PATH:Ljava/lang/String; = "icon_path"

.field private static final LABEL:Ljava/lang/String; = "label"


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mIconPath:Ljava/lang/String;

.field public mLabel:Ljava/lang/String;

.field public mTaskAffinity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "icon_path"

    .line 25
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->getCursorString(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mIconPath:Ljava/lang/String;

    const-string v0, "label"

    .line 26
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->getCursorString(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mLabel:Ljava/lang/String;

    const-string v0, "affinity"

    .line 27
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->getCursorString(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mTaskAffinity:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mIconPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "icon_data"

    .line 30
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->getCursorBlob(Ljava/lang/String;Landroid/database/Cursor;)[B

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 32
    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x1

    .line 35
    invoke-static {v0, p1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private getCursorBlob(Ljava/lang/String;Landroid/database/Cursor;)[B
    .locals 0

    .line 43
    :try_start_0
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 45
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getCursorString(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    .line 54
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mIconPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 66
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mIconPath:Ljava/lang/String;

    invoke-direct {v0, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    const/4 p1, 0x1

    .line 70
    invoke-static {v0, p1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    :goto_0
    return-object v1

    .line 73
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/shared/recents/webapps/WebAppInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method
