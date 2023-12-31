.class Lcom/miui/maml/NotifierManager$DarkModeNotifier$2;
.super Landroid/database/ContentObserver;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/NotifierManager$DarkModeNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;


# direct methods
.method constructor <init>(Lcom/miui/maml/NotifierManager$DarkModeNotifier;Landroid/os/Handler;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$2;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 466
    iget-object p1, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$2;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    invoke-static {p1}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->access$300(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V

    .line 467
    iget-object p0, p0, Lcom/miui/maml/NotifierManager$DarkModeNotifier$2;->this$0:Lcom/miui/maml/NotifierManager$DarkModeNotifier;

    invoke-static {p0}, Lcom/miui/maml/NotifierManager$DarkModeNotifier;->access$200(Lcom/miui/maml/NotifierManager$DarkModeNotifier;)V

    return-void
.end method
