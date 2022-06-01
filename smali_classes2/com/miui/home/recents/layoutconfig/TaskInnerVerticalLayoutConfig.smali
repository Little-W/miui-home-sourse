.class public Lcom/miui/home/recents/layoutconfig/TaskInnerVerticalLayoutConfig;
.super Ljava/lang/Object;
.source "TaskInnerVerticalLayoutConfig.java"

# interfaces
.implements Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomRatio()F
    .locals 1

    const v0, 0x3ecccccd    # 0.4f

    return v0
.end method

.method public getTopRatio(ZI)F
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x3f19999a    # 0.6f

    return p1

    :cond_0
    const/4 p1, 0x2

    if-gt p2, p1, :cond_1

    const p1, 0x3f1eb852    # 0.62f

    goto :goto_0

    :cond_1
    const p1, 0x3f14fdf4    # 0.582f

    :goto_0
    return p1
.end method
