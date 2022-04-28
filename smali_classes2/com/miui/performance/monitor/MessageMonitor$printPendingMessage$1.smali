.class final Lcom/miui/performance/monitor/MessageMonitor$printPendingMessage$1;
.super Ljava/lang/Object;
.source "MessageMonitor.kt"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/performance/monitor/MessageMonitor;->printPendingMessage(Ljava/io/PrintWriter;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/performance/monitor/MessageMonitor$printPendingMessage$1;->$pw:Ljava/io/PrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final println(Ljava/lang/String;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/miui/performance/monitor/MessageMonitor$printPendingMessage$1;->$pw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
