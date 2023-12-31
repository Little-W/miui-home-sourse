.class Lcom/mi/globallauncher/view/TapTargetView$6;
.super Ljava/lang/Object;
.source "TapTargetView.java"

# interfaces
.implements Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;


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

    .line 317
    iput-object p1, p0, Lcom/mi/globallauncher/view/TapTargetView$6;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 0

    .line 320
    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView$6;->this$0:Lcom/mi/globallauncher/view/TapTargetView;

    iget-object p0, p0, Lcom/mi/globallauncher/view/TapTargetView;->expandContractUpdateListener:Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;

    invoke-interface {p0, p1}, Lcom/mi/globallauncher/view/FloatValueAnimatorBuilder$UpdateListener;->onUpdate(F)V

    return-void
.end method
