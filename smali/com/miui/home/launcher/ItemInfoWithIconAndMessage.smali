.class public abstract Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;
.super Lcom/miui/home/launcher/ItemInfo;
.source "ItemInfoWithIconAndMessage.java"


# instance fields
.field protected mHideApplicationMessage:Z

.field protected mIconDrawable:Landroid/graphics/drawable/Drawable;

.field public runtimeStatusFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/miui/home/launcher/ItemInfo;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput v0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    return-void
.end method


# virtual methods
.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 41
    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getRuntimeStatusFlags()I
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    return p0
.end method

.method public isDisabled()Z
    .locals 0

    .line 130
    iget p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    and-int/lit8 p0, p0, 0x3f

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHideApplicationMessage()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mHideApplicationMessage:Z

    return p0
.end method

.method public setHideApplicationMessage(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mHideApplicationMessage:Z

    return-void
.end method

.method public setIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setRuntimeStatusFlags(I)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    return-void
.end method
