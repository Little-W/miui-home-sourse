.class Lcom/miui/home/launcher/upsidescene/ScrollableScreen$ScrollableScreenInterpolator;
.super Ljava/lang/Object;
.source "ScrollableScreen.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/upsidescene/ScrollableScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollableScreenInterpolator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/upsidescene/ScrollableScreen;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/miui/home/launcher/upsidescene/ScrollableScreen$ScrollableScreenInterpolator;->this$0:Lcom/miui/home/launcher/upsidescene/ScrollableScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    return v1
.end method
