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
.field private mClassName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mResourceManager:Lcom/miui/maml/ResourceManager;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable$MamlDrawableState;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    .line 168
    iput-object p4, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 169
    iput-object p2, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    .line 171
    iput-object p5, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method protected createDrawable()Lcom/miui/maml/MamlDrawable;
    .locals 7

    .line 175
    new-instance v6, Lcom/miui/maml/AnimatingDrawable;

    iget-object v1, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mClassName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v5, p0, Lcom/miui/maml/AnimatingDrawable$AnimatingDrawableState;->mUser:Landroid/os/UserHandle;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/AnimatingDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/ResourceManager;Landroid/os/UserHandle;)V

    return-object v6
.end method
