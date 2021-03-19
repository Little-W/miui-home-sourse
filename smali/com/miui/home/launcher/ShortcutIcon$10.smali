.class Lcom/miui/home/launcher/ShortcutIcon$10;
.super Lcom/miui/home/library/mirror/MirrorMenuListener;
.source "ShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ShortcutIcon;->getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$10;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-direct {p0}, Lcom/miui/home/library/mirror/MirrorMenuListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMirrorMenuQuery(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/mirror/MirrorMenu;",
            ">;"
        }
    .end annotation

    .line 762
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$10;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_0

    .line 763
    iget-object p1, p0, Lcom/miui/home/launcher/ShortcutIcon$10;->this$0:Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 765
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 766
    new-instance v1, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;

    invoke-direct {v1}, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;->setPendingIntent(Landroid/app/PendingIntent;)Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mirror/MirrorMenu$NewDisplayOpenBuilder;->build()Lcom/xiaomi/mirror/MirrorMenu;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
