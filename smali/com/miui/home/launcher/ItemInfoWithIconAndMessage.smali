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
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 42
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRuntimeStatusFlags()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 130
    iget v0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->runtimeStatusFlags:I

    and-int/lit8 v0, v0, 0x3f

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHideApplicationMessage()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mHideApplicationMessage:Z

    return v0
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
