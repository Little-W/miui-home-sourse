.class Lcom/miui/home/recents/views/MyTaskStackView$1;
.super Ljava/lang/Object;
.source "MyTaskStackView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/views/MyTaskStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/views/MyTaskStackView;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/views/MyTaskStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/views/MyTaskStackView$1;->this$0:Lcom/miui/home/recents/views/MyTaskStackView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/MyTaskStackView$1;->this$0:Lcom/miui/home/recents/views/MyTaskStackView;

    invoke-static {v0}, Lcom/miui/home/recents/views/MyTaskStackView;->access$000(Lcom/miui/home/recents/views/MyTaskStackView;)V

    return-void
.end method
