.class public final Lcom/miui/home/launcher/HideAppList$Companion;
.super Ljava/lang/Object;
.source "HideAppList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/HideAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHideAppList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HideAppList.kt\ncom/miui/home/launcher/HideAppList$Companion\n*L\n1#1,111:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/miui/home/launcher/HideAppList$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHideAppString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "miui_home_hide_app_list"

    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSHideAppList()Lcom/miui/home/launcher/HideAppList;
    .locals 1

    invoke-static {}, Lcom/miui/home/launcher/HideAppList;->access$getSHideAppList$cp()Lkotlin/Lazy;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/HideAppList;->Companion:Lcom/miui/home/launcher/HideAppList$Companion;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/HideAppList;

    return-object p0
.end method

.method public final putHideAppToList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "miui_home_hide_app_list"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
