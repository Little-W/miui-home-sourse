.class final Lcom/miui/home/launcher/commercial/CommercialCommons$3;
.super Ljava/lang/Object;
.source "CommercialCommons.java"

# interfaces
.implements Lcom/miui/msa/global/guessyoulike/v1/GlobalImageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/CommercialCommons;->loadIconFromGlobal(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$consumer:Ljava/util/function/Consumer;

.field final synthetic val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$3;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    iput-object p2, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$3;->val$consumer:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoadFailed(Ljava/lang/String;)V
    .locals 2

    const-string p1, "CommercialCommons"

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load icon failed, label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$3;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onImageLoadSuccess(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    const-string p1, "CommercialCommons"

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load icon success, label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$3;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/RemoteShortcutInfo;->getLable()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$3;->val$info:Lcom/miui/home/launcher/RemoteShortcutInfo;

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/CommercialCommons$3;->val$consumer:Ljava/util/function/Consumer;

    invoke-static {p2, p1, v0}, Lcom/miui/home/launcher/commercial/CommercialCommons;->access$000(Landroid/net/Uri;Lcom/miui/home/launcher/RemoteShortcutInfo;Ljava/util/function/Consumer;)V

    return-void
.end method
