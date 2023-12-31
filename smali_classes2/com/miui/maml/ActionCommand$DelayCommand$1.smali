.class Lcom/miui/maml/ActionCommand$DelayCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/maml/ActionCommand$DelayCommand;-><init>(Lcom/miui/maml/ActionCommand;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/ActionCommand$DelayCommand;


# direct methods
.method constructor <init>(Lcom/miui/maml/ActionCommand$DelayCommand;)V
    .locals 0

    .line 1387
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$DelayCommand$1;->this$0:Lcom/miui/maml/ActionCommand$DelayCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1389
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$DelayCommand$1;->this$0:Lcom/miui/maml/ActionCommand$DelayCommand;

    invoke-static {p0}, Lcom/miui/maml/ActionCommand$DelayCommand;->access$400(Lcom/miui/maml/ActionCommand$DelayCommand;)Lcom/miui/maml/ActionCommand;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->perform()V

    return-void
.end method
