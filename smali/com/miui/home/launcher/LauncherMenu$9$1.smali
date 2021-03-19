.class Lcom/miui/home/launcher/LauncherMenu$9$1;
.super Ljava/lang/Object;
.source "LauncherMenu.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/LauncherMenu$9;->sendAccessibilityEvent(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/LauncherMenu$9;

.field final synthetic val$host:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/LauncherMenu$9;Landroid/view/View;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherMenu$9$1;->this$1:Lcom/miui/home/launcher/LauncherMenu$9;

    iput-object p2, p0, Lcom/miui/home/launcher/LauncherMenu$9$1;->val$host:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/miui/home/launcher/LauncherMenu$9$1;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherMenu$9$1;->val$host:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
