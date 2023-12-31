.class Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;
.super Ljava/lang/Object;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tracker"
.end annotation


# instance fields
.field fold:F

.field prev:F

.field start:F

.field final synthetic this$1:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->this$1:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 254
    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->prev:F

    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->fold:F

    iput v0, p0, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker$Tracker;->start:F

    return-void
.end method
