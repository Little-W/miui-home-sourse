.class Lcom/miui/home/launcher/CellScreen$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/CellScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/CellScreen;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/CellScreen;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/miui/home/launcher/CellScreen$2;->this$0:Lcom/miui/home/launcher/CellScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen$2;->this$0:Lcom/miui/home/launcher/CellScreen;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/CellScreen;->access$002(Lcom/miui/home/launcher/CellScreen;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/miui/home/launcher/CellScreen$2;->this$0:Lcom/miui/home/launcher/CellScreen;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/CellScreen;->access$002(Lcom/miui/home/launcher/CellScreen;Z)Z

    return-void
.end method
