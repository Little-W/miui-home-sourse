.class Lcom/miui/home/launcher/UninstallDialogWrapper$5;
.super Ljava/lang/Object;
.source "UninstallDialogWrapper.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/UninstallDialogWrapper;->confirmUninstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/UninstallDialogWrapper;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$5;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDialogWrapper$5;->this$0:Lcom/miui/home/launcher/UninstallDialogWrapper;

    invoke-static {p1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->access$200(Lcom/miui/home/launcher/UninstallDialogWrapper;)Lcom/miui/home/launcher/UninstallDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/UninstallDialog;->checkUninstallApp()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 159
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDialogWrapper$5;->apply(Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
