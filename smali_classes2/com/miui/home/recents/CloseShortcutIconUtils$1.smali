.class Lcom/miui/home/recents/CloseShortcutIconUtils$1;
.super Ljava/util/ArrayList;
.source "CloseShortcutIconUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/CloseShortcutIconUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityCenter:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/CloseShortcutIconUtils$1;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityManager:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/CloseShortcutIconUtils$1;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityManagerNew:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/CloseShortcutIconUtils$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
