.class final Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;
.super Lcom/miui/maml/MamlDrawable$MamlDrawableState;
.source "AnimatingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/AnimatingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimatingDrawableState"
.end annotation


# instance fields
.field private final mAnimIndex:I

.field private final mClassName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mLayerIndex:I

.field private final mPackageName:Ljava/lang/String;

.field private final mResourceManager:Lcom/miui/maml/ResourceManager;

.field private final mUseFancyWhenStatic:Z

.field private final mUseQuietWhenAnim:Z

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V
    .locals 0

    .line 249
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable$MamlDrawableState;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    .line 251
    iput-object p4, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 252
    iput-object p2, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    .line 253
    iput-object p3, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    .line 254
    iput-object p5, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    .line 255
    iput p6, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mLayerIndex:I

    .line 256
    iput p7, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mAnimIndex:I

    .line 257
    iput-boolean p8, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseQuietWhenAnim:Z

    .line 258
    iput-boolean p9, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseFancyWhenStatic:Z

    return-void
.end method


# virtual methods
.method protected createDrawable()Lcom/miui/maml/MamlDrawable;
    .locals 11

    .line 262
    new-instance v10, Lcom/miui/maml/AnimatingDrawable;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v5, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    iget v6, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mLayerIndex:I

    iget v7, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mAnimIndex:I

    iget-boolean v8, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseQuietWhenAnim:Z

    iget-boolean v9, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUseFancyWhenStatic:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;IIZZ)V

    return-object v10
.end method
