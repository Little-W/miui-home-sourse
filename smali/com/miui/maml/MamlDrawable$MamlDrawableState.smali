.class public Lcom/miui/maml/MamlDrawable$MamlDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "MamlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/MamlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MamlDrawableState"
.end annotation


# instance fields
.field protected mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field protected mStateBadgeLocation:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDrawable()Lcom/miui/maml/MamlDrawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 162
    invoke-virtual {p0}, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->createDrawable()Lcom/miui/maml/MamlDrawable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 170
    :goto_0
    iget-object v3, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    .line 171
    new-instance v1, Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 175
    :cond_2
    invoke-virtual {v0, v2, v1}, Lcom/miui/maml/MamlDrawable;->setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    return-object v0
.end method
