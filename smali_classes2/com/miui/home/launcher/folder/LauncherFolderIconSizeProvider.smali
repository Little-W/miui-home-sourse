.class public final Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;
.super Lcom/miui/home/launcher/common/ScaleIconSizeProvider;
.source "LauncherFolderIconSizeProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;,
        Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$Companion;

.field private static final instance:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;->Companion:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$Companion;

    .line 13
    sget-object v0, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;->INSTANCE:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;->getHolder()Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;->instance:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;
    .locals 1

    .line 8
    sget-object v0, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;->instance:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;

    return-object v0
.end method


# virtual methods
.method public enableAndResetCache()V
    .locals 2

    .line 32
    invoke-super {p0}, Lcom/miui/home/launcher/common/ScaleIconSizeProvider;->enableAndResetCache()V

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const-string v1, "PreferenceUtils.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;->setScale(F)V

    return-void
.end method
