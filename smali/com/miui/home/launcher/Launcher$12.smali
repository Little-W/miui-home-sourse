.class Lcom/miui/home/launcher/Launcher$12;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->loadPaView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 2180
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$12;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 2180
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$12;->accept(Ljava/lang/Void;)V

    return-void
.end method

.method public accept(Ljava/lang/Void;)V
    .locals 1

    .line 2183
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$12;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/Launcher;->access$2002(Lcom/miui/home/launcher/Launcher;Z)Z

    .line 2184
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$12;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$2100(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method
