.class public abstract Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;
.super Ljava/lang/Object;
.source "ThumbnailBackgroundAnimController.java"


# instance fields
.field public final mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/home/launcher/anim/ThumbnailBackgroundAnimController;->mTargetView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public abstract drawBackground(Landroid/graphics/Canvas;)V
.end method

.method public abstract updateBackground(Lcom/miui/home/launcher/anim/BackgroundType;Z)V
.end method

.method public abstract updateColor()V
.end method
