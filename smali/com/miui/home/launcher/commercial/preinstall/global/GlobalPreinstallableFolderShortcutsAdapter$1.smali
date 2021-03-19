.class Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$1;
.super Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;
.source "GlobalPreinstallableFolderShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;->refreshPreinstallList(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor<",
        "Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$1;->this$0:Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter;

    invoke-direct {p0}, Lcom/miui/home/launcher/commercial/CommercialCommons$Extractor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageName(Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPackageName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 80
    check-cast p1, Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/commercial/preinstall/global/GlobalPreinstallableFolderShortcutsAdapter$1;->getPackageName(Lcom/miui/home/launcher/commercial/preinstall/global/FolderPreinstallAdInfoWrapper;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
