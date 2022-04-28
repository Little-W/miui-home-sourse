.class Lcom/mi/globallauncher/view/TapTargetView$5;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$EndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/globallauncher/view/TapTargetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/globallauncher/view/TapTargetView;


# direct methods
.method constructor <init>(Lcom/mi/globallauncher/view/TapTargetView;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$5;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/mi/globallauncher/view/TapTargetView$5;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/globallauncher/view/TapTargetView;->access$100(Lcom/mi/globallauncher/view/TapTargetView;Z)V

    return-void
.end method
