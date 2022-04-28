.class Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;
.super Lcom/miui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppIconProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ApplicationIcon"


# instance fields
.field private mCls:Ljava/lang/String;

.field private mNoIcon:Z

.field private mPkg:Ljava/lang/String;

.field private mSrc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    return-void
.end method

.method private parseSrc(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    .line 168
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->access$002(Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, ","

    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 171
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 172
    aget-object p1, v1, v0

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    .line 173
    aget-object p1, v1, v2

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_0
    array-length v3, v1

    if-ne v3, v2, :cond_1

    .line 175
    aget-object p1, v1, v0

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "BitmapProvider"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid src of ApplicationIcon type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput-boolean v2, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    goto :goto_0

    :cond_2
    const-string v0, "BitmapProvider"

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid src of ApplicationIcon type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-boolean v2, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    :goto_0
    return-void
.end method

.method private tryToSetBitmap()V
    .locals 6

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    goto :goto_2

    .line 200
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 201
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 202
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    .line 203
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 204
    :goto_1
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 205
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    .line 206
    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 207
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0, v3}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "BitmapProvider"

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to get icon for src of ApplicationIcon type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/maml/util/MamlLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    :goto_2
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 0

    .line 155
    iget-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 156
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    .line 157
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->parseSrc(Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    if-nez p1, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->tryToSetBitmap()V

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object p1
.end method

.method public init(Ljava/lang/String;)V
    .locals 0

    .line 148
    invoke-super {p0, p1}, Lcom/miui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 149
    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->mSrc:Ljava/lang/String;

    .line 150
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$AppIconProvider;->parseSrc(Ljava/lang/String;)V

    return-void
.end method
