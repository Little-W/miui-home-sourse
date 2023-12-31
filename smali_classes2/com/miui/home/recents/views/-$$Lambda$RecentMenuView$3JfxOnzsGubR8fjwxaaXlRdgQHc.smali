.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$3JfxOnzsGubR8fjwxaaXlRdgQHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$3JfxOnzsGubR8fjwxaaXlRdgQHc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$3JfxOnzsGubR8fjwxaaXlRdgQHc;

    invoke-direct {v0}, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$3JfxOnzsGubR8fjwxaaXlRdgQHc;-><init>()V

    sput-object v0, Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$3JfxOnzsGubR8fjwxaaXlRdgQHc;->INSTANCE:Lcom/miui/home/recents/views/-$$Lambda$RecentMenuView$3JfxOnzsGubR8fjwxaaXlRdgQHc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/miui/home/recents/views/RecentMenuView;->lambda$toastWhenFirstShowAddPairButton$3(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
