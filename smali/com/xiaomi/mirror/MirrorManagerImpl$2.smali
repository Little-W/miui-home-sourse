.class Lcom/xiaomi/mirror/MirrorManagerImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mirror/MirrorManagerImpl;->showPopupWindow(Landroid/view/View;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/mirror/MirrorManagerImpl;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaomi/mirror/MirrorManagerImpl;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->this$0:Lcom/xiaomi/mirror/MirrorManagerImpl;

    iput-object p2, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->this$0:Lcom/xiaomi/mirror/MirrorManagerImpl;

    invoke-static {p1}, Lcom/xiaomi/mirror/MirrorManagerImpl;->access$200(Lcom/xiaomi/mirror/MirrorManagerImpl;)Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mirror/widget/ImmersionListPopupWindow;->dismiss()V

    iget-object p1, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/mirror/MirrorMenu;

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->needCallRemote()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "com.xiaomi.mirror"

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getUri()Landroid/net/Uri;

    move-result-object p4

    const/4 p5, 0x3

    invoke-virtual {p2, p3, p4, p5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_0
    const/4 p2, 0x0

    :try_start_0
    iget-object p3, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$v:Landroid/view/View;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$v:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$v:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p2

    :cond_1
    iget-object p3, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->this$0:Lcom/xiaomi/mirror/MirrorManagerImpl;

    invoke-static {p3}, Lcom/xiaomi/mirror/MirrorManagerImpl;->access$300(Lcom/xiaomi/mirror/MirrorManagerImpl;)Lcom/xiaomi/mirror/IMirrorManager;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/xiaomi/mirror/IMirrorManager;->onRemoteMenuActionCall(Lcom/xiaomi/mirror/MirrorMenu;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "MirrorManagerImpl"

    const-string p3, "onRemoteMenuActionCall"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getListener()Lcom/xiaomi/mirror/MirrorMenu$Callback;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getListener()Lcom/xiaomi/mirror/MirrorMenu$Callback;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaomi/mirror/MirrorManagerImpl$2;->val$v:Landroid/view/View;

    invoke-interface {p2, p3, p1}, Lcom/xiaomi/mirror/MirrorMenu$Callback;->onClick(Landroid/view/View;Lcom/xiaomi/mirror/MirrorMenu;)V

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p2

    if-eqz p2, :cond_4

    :try_start_1
    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string p2, "MirrorManagerImpl"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void
.end method
