.class public final synthetic Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$uZcSFxmHnWrDm0ZbtZI6nAQ388c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$uZcSFxmHnWrDm0ZbtZI6nAQ388c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$uZcSFxmHnWrDm0ZbtZI6nAQ388c;

    invoke-direct {v0}, Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$uZcSFxmHnWrDm0ZbtZI6nAQ388c;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$uZcSFxmHnWrDm0ZbtZI6nAQ388c;->INSTANCE:Lcom/miui/home/launcher/graphics/-$$Lambda$IconPalette$uZcSFxmHnWrDm0ZbtZI6nAQ388c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/graphics/IconPalette;->lambda$updateAllAppsColorType$2(Lcom/miui/home/launcher/AppInfo;)V

    return-void
.end method
