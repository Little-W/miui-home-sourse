.class Lcom/miui/home/launcher/Launcher$43;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->reloadClockIfNeed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 4111
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$43;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 1

    .line 4114
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4115
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$43;->this$0:Lcom/miui/home/launcher/Launcher;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->reloadGadget(I)V

    .line 4116
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$43;->this$0:Lcom/miui/home/launcher/Launcher;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->reloadGadget(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 4111
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$43;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
