.class Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$3;
.super Ljava/lang/Object;
.source "MultiSelectMonitor.java"

# interfaces
.implements Ljava/util/function/Predicate;


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
        "Ljava/util/function/Predicate<",
        "Lcom/miui/home/launcher/ShortcutInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$3;->this$0:Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    iput-object p2, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$3;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Lcom/miui/home/launcher/ShortcutInfo;)Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$3;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 194
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor$3;->test(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p1

    return p1
.end method
