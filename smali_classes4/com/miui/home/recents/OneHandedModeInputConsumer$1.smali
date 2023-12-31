.class Lcom/miui/home/recents/OneHandedModeInputConsumer$1;
.super Landroid/database/ContentObserver;
.source "OneHandedModeInputConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/OneHandedModeInputConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/OneHandedModeInputConsumer;


# direct methods
.method constructor <init>(Lcom/miui/home/recents/OneHandedModeInputConsumer;Landroid/os/Handler;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer$1;->this$0:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/miui/home/recents/OneHandedModeInputConsumer$1;->this$0:Lcom/miui/home/recents/OneHandedModeInputConsumer;

    invoke-static {p0}, Lcom/miui/home/recents/OneHandedModeInputConsumer;->access$000(Lcom/miui/home/recents/OneHandedModeInputConsumer;)V

    return-void
.end method
