.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$SearchBar$fO2syn4JcZS99atuyBxunuj1tgs;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBar$fO2syn4JcZS99atuyBxunuj1tgs;->f$0:Lcom/miui/home/launcher/SearchBar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$SearchBar$fO2syn4JcZS99atuyBxunuj1tgs;->f$0:Lcom/miui/home/launcher/SearchBar;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->lambda$tryUpdate$0$SearchBar()V

    return-void
.end method
