.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$SearchBar$YlrJbip09THNFHs-HlXKn9LOAC4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/SearchBar;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBar$YlrJbip09THNFHs-HlXKn9LOAC4;->f$0:Lcom/miui/home/launcher/SearchBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBar$YlrJbip09THNFHs-HlXKn9LOAC4;->f$0:Lcom/miui/home/launcher/SearchBar;

    invoke-static {v0}, Lcom/miui/home/launcher/SearchBar;->lambda$tryUpdate$1(Lcom/miui/home/launcher/SearchBar;)V

    return-void
.end method
