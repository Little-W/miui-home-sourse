.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$FolderIcon$SFHeY-z-jw0n_86ueAtASyNFeYI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$SFHeY-z-jw0n_86ueAtASyNFeYI;->f$0:Lcom/miui/home/launcher/FolderIcon;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$SFHeY-z-jw0n_86ueAtASyNFeYI;->f$0:Lcom/miui/home/launcher/FolderIcon;

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/FolderIcon;->lambda$getPreviewPosition$1(Lcom/miui/home/launcher/FolderIcon;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
