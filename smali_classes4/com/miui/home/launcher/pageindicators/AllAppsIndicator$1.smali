.class Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AllAppsIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->showAllAppsArrow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator$1;->this$0:Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;->access$002(Lcom/miui/home/launcher/pageindicators/AllAppsIndicator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
