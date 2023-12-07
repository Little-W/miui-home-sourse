.class Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$2;
.super Ljava/lang/Object;
.source "MultiSelectMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->unCheckShortcut(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$2;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$2;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->uncheckShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 199
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$2;->accept(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
