.class Lcom/miui/home/launcher/AppWidgetResizeFrame$2;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/AppWidgetResizeFrame;->snapToWidget(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/AppWidgetResizeFrame;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$2;->this$0:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 485
    iget-object p1, p0, Lcom/miui/home/launcher/AppWidgetResizeFrame$2;->this$0:Lcom/miui/home/launcher/AppWidgetResizeFrame;

    invoke-virtual {p1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method
