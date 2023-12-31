.class Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;
.super Ljava/lang/Object;
.source "ProgressShortcutInfo.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->updateStatus(Lcom/miui/home/launcher/Launcher;ILjava/lang/String;Landroid/net/Uri;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

.field final synthetic val$deltaPercent:I

.field final synthetic val$launcher:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$originalPercent:I

.field final synthetic val$screenId:J


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;IILcom/miui/home/launcher/Launcher;J)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;->this$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iput p2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;->val$originalPercent:I

    iput p3, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;->val$deltaPercent:I

    iput-object p4, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iput-wide p5, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;->val$screenId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 100
    iget-object v0, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;->this$0:Lcom/miui/home/launcher/progress/ProgressShortcutInfo;

    iget v1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;->val$originalPercent:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;->val$deltaPercent:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    iput p1, v0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->mProgressPercent:I

    .line 101
    iget-object p1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;->val$launcher:Lcom/miui/home/launcher/Launcher;

    iget-wide v1, p0, Lcom/miui/home/launcher/progress/ProgressShortcutInfo$1;->val$screenId:J

    invoke-static {v0, p1, v1, v2}, Lcom/miui/home/launcher/progress/ProgressShortcutInfo;->access$000(Lcom/miui/home/launcher/progress/ProgressShortcutInfo;Lcom/miui/home/launcher/Launcher;J)V

    return-void
.end method
