.class public final synthetic Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$Xj9z-3-NxNcpNKp3gsO4_0x7lSA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$Xj9z-3-NxNcpNKp3gsO4_0x7lSA;->f$0:Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/commercial/recommend/-$$Lambda$RecommendController$Xj9z-3-NxNcpNKp3gsO4_0x7lSA;->f$0:Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->lambda$preloadRecommendAppsIcon$0(Lcom/miui/home/launcher/CommercialRemoteShortcutInfo;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
