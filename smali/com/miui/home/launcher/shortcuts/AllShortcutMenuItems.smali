.class public Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;
.super Ljava/lang/Object;
.source "AllShortcutMenuItems.java"


# instance fields
.field private mAppShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemShortcutMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppShortcutMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAppShortcutMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public getSystemShortcutMenuItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mSystemShortcutMenuItems:Ljava/util/List;

    return-object v0
.end method

.method public setAppShortcutMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 15
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAppShortcutMenuItems:Ljava/util/List;

    return-void
.end method

.method public setSystemShortcutMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mSystemShortcutMenuItems:Ljava/util/List;

    return-void
.end method
