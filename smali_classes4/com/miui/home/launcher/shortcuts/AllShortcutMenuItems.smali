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

.field private mFolderShortcutMenuItems:Ljava/util/List;
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

.field private mWidgetShortcutMenuItems:Ljava/util/List;
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
.method public getAllShortcutMenuItemsSize()I
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAppShortcutMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mSystemShortcutMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mFolderShortcutMenuItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mWidgetShortcutMenuItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getAppShortcutMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAppShortcutMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public getFolderShortcutMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mFolderShortcutMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public getSystemShortcutMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mSystemShortcutMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public getWidgetShortcutMenuItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mWidgetShortcutMenuItems:Ljava/util/List;

    return-object p0
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

    .line 17
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mAppShortcutMenuItems:Ljava/util/List;

    return-void
.end method

.method public setFolderShortcutMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mFolderShortcutMenuItems:Ljava/util/List;

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

    .line 25
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mSystemShortcutMenuItems:Ljava/util/List;

    return-void
.end method

.method public setWidgetShortcutMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/shortcuts/ShortcutMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/shortcuts/AllShortcutMenuItems;->mWidgetShortcutMenuItems:Ljava/util/List;

    return-void
.end method
