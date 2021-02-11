.class public final synthetic Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$tOqg4H2OTzL7b0jD9mGhvPGcytA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$tOqg4H2OTzL7b0jD9mGhvPGcytA;->f$0:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/widget/-$$Lambda$WidgetThumbnailView$tOqg4H2OTzL7b0jD9mGhvPGcytA;->f$0:Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;

    invoke-static {v0}, Lcom/miui/home/launcher/widget/WidgetThumbnailView;->lambda$resetAdapter$0(Lcom/miui/home/launcher/widget/WidgetsVerticalAdapter;)V

    return-void
.end method
