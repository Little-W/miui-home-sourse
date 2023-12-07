.class public Lcom/mi/globallauncher/view/TapTargetView$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOuterCircleClick(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 0

    return-void
.end method

.method public onTargetCancel(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/mi/globallauncher/view/TapTargetView;->dismiss(Z)V

    return-void
.end method

.method public onTargetClick(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/mi/globallauncher/view/TapTargetView;->dismiss(Z)V

    return-void
.end method

.method public onTargetDismissed(Lcom/mi/globallauncher/view/TapTargetView;Z)V
    .locals 0

    return-void
.end method

.method public onTargetLongClick(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mi/globallauncher/view/TapTargetView$Listener;->onTargetClick(Lcom/mi/globallauncher/view/TapTargetView;)V

    return-void
.end method
