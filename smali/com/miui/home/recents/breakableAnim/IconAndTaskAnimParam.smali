.class public Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;
.super Ljava/lang/Object;
.source "IconAndTaskAnimParam.java"


# instance fields
.field public mRectF:Landroid/graphics/RectF;

.field public mTaskAlpha:F

.field public mTaskRadius:F


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;FF)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mRectF:Landroid/graphics/RectF;

    .line 12
    iput p2, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mTaskRadius:F

    .line 13
    iput p3, p0, Lcom/miui/home/recents/breakableAnim/IconAndTaskAnimParam;->mTaskAlpha:F

    return-void
.end method
