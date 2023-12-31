.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$FolderIcon$vTfcXpPUY9bRzl24Gaykuqr9td0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/FolderIcon;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$vTfcXpPUY9bRzl24Gaykuqr9td0;->f$0:Lcom/miui/home/launcher/FolderIcon;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$FolderIcon$vTfcXpPUY9bRzl24Gaykuqr9td0;->f$0:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p0}, Lcom/miui/home/launcher/FolderIcon;->lambda$updateBackground$2(Lcom/miui/home/launcher/FolderIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
