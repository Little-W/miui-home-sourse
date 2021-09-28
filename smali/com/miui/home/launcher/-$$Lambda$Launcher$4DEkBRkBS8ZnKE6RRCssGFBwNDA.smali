.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$4DEkBRkBS8ZnKE6RRCssGFBwNDA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$4DEkBRkBS8ZnKE6RRCssGFBwNDA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$4DEkBRkBS8ZnKE6RRCssGFBwNDA;

    invoke-direct {v0}, Lcom/miui/home/launcher/-$$Lambda$Launcher$4DEkBRkBS8ZnKE6RRCssGFBwNDA;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/-$$Lambda$Launcher$4DEkBRkBS8ZnKE6RRCssGFBwNDA;->INSTANCE:Lcom/miui/home/launcher/-$$Lambda$Launcher$4DEkBRkBS8ZnKE6RRCssGFBwNDA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/miui/home/launcher/Launcher;->lambda$reloadSearchBarIfNeed$18()V

    return-void
.end method
