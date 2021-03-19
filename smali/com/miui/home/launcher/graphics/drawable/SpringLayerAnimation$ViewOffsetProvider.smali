.class public Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$ViewOffsetProvider;
.super Ljava/lang/Object;
.source "SpringLayerAnimation.java"

# interfaces
.implements Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$OffsetProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewOffsetProvider"
.end annotation


# instance fields
.field private final mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$ViewOffsetProvider;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    return-void
.end method


# virtual methods
.method public getViewOffsetX()F
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$ViewOffsetProvider;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getValueX()F

    move-result v0

    return v0
.end method

.method public getViewOffsetY()F
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimation$ViewOffsetProvider;->mAnimator:Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;

    invoke-virtual {v0}, Lcom/miui/home/launcher/graphics/drawable/SpringLayerAnimator;->getValueY()F

    move-result v0

    return v0
.end method
