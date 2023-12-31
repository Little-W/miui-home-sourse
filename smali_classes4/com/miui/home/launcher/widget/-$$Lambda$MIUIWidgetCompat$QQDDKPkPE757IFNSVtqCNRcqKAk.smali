.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$QQDDKPkPE757IFNSVtqCNRcqKAk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$QQDDKPkPE757IFNSVtqCNRcqKAk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$QQDDKPkPE757IFNSVtqCNRcqKAk;

    invoke-direct {v0}, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$QQDDKPkPE757IFNSVtqCNRcqKAk;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$QQDDKPkPE757IFNSVtqCNRcqKAk;->INSTANCE:Lcom/miui/home/launcher/widget/-$$Lambda$MIUIWidgetCompat$QQDDKPkPE757IFNSVtqCNRcqKAk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->lambda$getExistingMaMlDir$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
