.class Lcom/miui/home/recents/views/TaskViewHeader$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/views/TaskViewHeader;->startResetTaskAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/TaskViewHeader;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/TaskViewHeader;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader$2;->this$0:Lcom/miui/home/recents/views/TaskViewHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 271
    iget-object p1, p0, Lcom/miui/home/recents/views/TaskViewHeader$2;->this$0:Lcom/miui/home/recents/views/TaskViewHeader;

    iget-object p1, p1, Lcom/miui/home/recents/views/TaskViewHeader;->mDismissView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
