.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$AppWidgetResizeFrame$pngf6Eho4alnPD5gpM0msQK2VKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/miui/home/launcher/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$AppWidgetResizeFrame$pngf6Eho4alnPD5gpM0msQK2VKY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$AppWidgetResizeFrame$pngf6Eho4alnPD5gpM0msQK2VKY;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$AppWidgetResizeFrame$pngf6Eho4alnPD5gpM0msQK2VKY;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$AppWidgetResizeFrame$pngf6Eho4alnPD5gpM0msQK2VKY;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$AppWidgetResizeFrame$pngf6Eho4alnPD5gpM0msQK2VKY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/miui/home/launcher/AppWidgetResizeFrame;->lambda$static$0(Landroid/content/Context;)[Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method
