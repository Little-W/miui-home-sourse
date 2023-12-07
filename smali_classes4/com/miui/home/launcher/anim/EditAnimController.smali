.class public abstract Lcom/miui/home/launcher/anim/EditAnimController;
.super Ljava/lang/Object;
.source "EditAnimController.java"


# instance fields
.field protected mCellLayout:Lcom/miui/home/launcher/CellLayout;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    return-void
.end method


# virtual methods
.method public drawEditBackground(ZLandroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public abstract onScreenSizeChanged()V
.end method

.method public abstract startEditAnim(ZLcom/miui/home/launcher/EditStateChangeReason;)V
.end method

.method public updateEditBackground(F)V
    .locals 0

    return-void
.end method

.method public abstract updateParam()V
.end method
