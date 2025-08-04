# Privy Analytics

Privy Analytics is a lightweight, privacy-first web analytics platform built with Ruby on Rails.  
It helps you track meaningful engagement — page views, clicks, and scrolls — without cookies or intrusive tracking.

## Features

- Privacy-friendly (GDPR/CCPA compliant)
- Track page views, clicks, hovers, scroll depth, and visibility
- No cookies or fingerprinting
- Simple JS snippet for integration
- Hotwire-powered real-time dashboard
- Easy API-based data collection
- Fast & minimal — optimized for modern Rails apps

---

## Tech Stack

- **Backend**: Ruby on Rails (API mode)
- **Frontend**: Turbo + Stimulus (Hotwire)
- **Database**: PostgreSQL
- **Background Jobs**: Redis + Sidekiq (optional for batching)
- **Optional(future plan)**: ClickHouse for long-term event storage

---

## Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/your-username/privy-analytics.git
cd privy-analytics
bundle install
yarn install
```