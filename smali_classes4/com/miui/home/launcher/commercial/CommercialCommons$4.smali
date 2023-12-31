.class Lcom/miui/home/launcher/commercial/CommercialCommons$4;
.super Ljava/lang/Object;
.source "CommercialCommons.java"

# interfaces
.implements Lcom/miui/msa/internal/preinstall/v1/ImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/CommercialCommons;->loadIconFromCN(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$consumer:Ljava/util/function/Consumer;

.field final synthetic val$infoWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Ljava/util/function/Consumer;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$4;->val$infoWeakRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$4;->val$consumer:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadFailed(Ljava/lang/String;)V
    .locals 1

    .line 219
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$4;->val$infoWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/RemoteShortcutInfo;

    if-eqz p0, :cond_0

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load icon failed, label="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CommercialCommons"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$4;->val$infoWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/RemoteShortcutInfo;

    if-eqz v0, :cond_0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load icon success, label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CommercialCommons"

    invoke-static {v1, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$4;->val$consumer:Ljava/util/function/Consumer;

    invoke-static {p2, v0, p0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->access$000(Landroid/net/Uri;Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
