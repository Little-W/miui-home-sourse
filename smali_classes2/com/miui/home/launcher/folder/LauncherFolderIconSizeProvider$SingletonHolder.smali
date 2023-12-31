.class final Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;
.super Ljava/lang/Object;
.source "LauncherFolderIconSizeProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingletonHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;

.field private static final holder:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;

    invoke-direct {v0}, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;->INSTANCE:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;

    .line 17
    new-instance v0, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;->holder:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHolder()Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;
    .locals 0

    .line 17
    sget-object p0, Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider$SingletonHolder;->holder:Lcom/miui/home/launcher/folder/LauncherFolderIconSizeProvider;

    return-object p0
.end method
